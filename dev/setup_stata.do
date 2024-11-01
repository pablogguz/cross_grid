

// Set up GitHub installation source if not already installed
cap which github
if _rc {
    net install github, from("https://haghish.github.io/github/")
}

// Navigate to the package directory
cd "C:\Users\pablo\Documents\GitHub\cross_grid\"

make cross_grid, replace toc pkg version(0.1.0)                                  ///
     license("MIT")                                                           ///
     author("Pablo Garcia-Guzman")                                            ///
     affiliation("EBRD")                                                      ///
     email("garciagp@ebrd.com")                                               ///
     url("")                                                                  ///
     title("Create a data frame from all combinations of the supplied variables") ///
     description("")                                                          ///
     install("cross_grid.ado;cross_grid.sthlp")                                        
