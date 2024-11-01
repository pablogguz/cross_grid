
# cross_grid <img src="icon/hex_cross_grid.png" align="right" width="150"/>

Create complete cross products of variables in Stata, similar to R's [`expand.grid()`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/expand.grid). Given a set of variables, `cross_grid` generates all possible combinations of their unique values, producing a dataset with N₁ × N₂ × ... × Nₖ observations (where Nᵢ is the number of unique values in the i-th variable).


`cross_grid` is particularly useful for some applications in economics and other social sciences, such as:

- Filling country-pair panels for gravity models 
- Generating origin-destination combinations for shift-share/Bartik designs
- Generating product-market combinations for demand estimation

## Installation

```
net install cross_grid, from(https://raw.githubusercontent.com/pablogguz/cross_grid/master/) replace
```

## Requirements

- Stata 14.0 or higher
- Requires gtools package. To install:
```stata
    ssc install gtools
    gtools, upgrade
```

## Usage

```stata
cross_grid varlist
```
> [!IMPORTANT]  
> The resulting dataset will only contain the cross variables. If you need to merge the results back to your original data, wrap the command in a preserve/restore block:
```stata
preserve
    cross_grid var1 var2 var3
    // ... work with cross product ...
restore
```

## Examples

```stata
* Simple example with three variables
    clear all
    input region_num type_num price_num
        1 1 1
        2 2 2
        3 3 3
    end

    cross_grid region_num type_num price_num
```

## Contributing

Issues and pull requests are welcome.

## Author

Pablo Garcia-Guzman

## Changelog

### [0.1.0] - 2024-11-01
- Initial release

