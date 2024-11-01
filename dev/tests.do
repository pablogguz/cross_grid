* Example 1: Colors and sizes
    /* clear 
    input str10 color
    "red"
    "blue"
    end

    input size
    10
    20

    cross_grid color size
    list */

* Example 2: 
    clear
    set seed 123

    * Create sample data with duplicates
    input str20 product
    "laptop"
    "desktop"
    "tablet"
    "laptop"
    "phone"
    "tablet"
    "desktop"
    end

    input year
    2020
    2021
    2022
    2020
    2021
    2022
    2021

    input str10 region
    "North"
    "South"
    "East"
    "West"
    "North"
    "South"
    "East"

    input str15 customer_type
    "retail"
    "business"
    "retail"
    "business"
    "retail"
    "business"
    "retail"

    input price_category
    1
    2
    3
    1
    2
    3
    2

    * Should give us 4 (products) × 3 (years) × 4 (regions) × 2 (customer types) × 3 (price categories) = 288 combinations
    cross_grid product year region customer_type price_category
    list in 1/10, sepby(product)
    count