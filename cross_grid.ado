capture program drop cross_grid
program define cross_grid
    version 14.0
    
    syntax varlist
    
    // Check if gtools is installed
    capture which gduplicates
    if _rc {
        display as error "This command requires gtools package. To install, please run:"
        display as result "ssc install gtools"
        display as result "gtools, upgrade"
        exit 199
    }
    
    // Keep only needed variables
    keep `varlist'
    
    // Get number of variables
    local nvars : word count `varlist'
    
    // Store each variable in its own tempfile
    quietly {
        forvalues i = 1/`nvars' {
            local currvar : word `i' of `varlist'
            preserve
                keep `currvar'
                gduplicates drop
                tempfile temp`i'
                save `temp`i''
            restore
        }
    } 
    
    // Start with first variable and cross with others
    use `temp1', clear
    forvalues i = 2/`nvars' {
        cross using `temp`i''
    }
end