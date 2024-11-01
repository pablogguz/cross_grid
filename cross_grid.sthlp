{smcl}
{* *! version 1.0  01nov2024}{...}
{title:Title}

{phang}
{bf:cross_grid} {hline 2} Create all possible combinations of variables (similar to R's expand.grid)

{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:cross_grid} {varlist} [{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt gen:erate(namelist)}}specify names for the new variables; if not specified, variables will be named v1, v2, etc.{p_end}
{synoptline}

{marker description}{...}
{title:Description}

{pstd}
{cmd:cross_grid} creates a new dataset containing all possible combinations of the values in the specified variables, 
similar to the expand.grid() function in R. For example, if you have a variable with values (1,2) and another with 
values (a,b,c), the result will be a dataset with 6 observations containing all possible combinations.

{marker options}{...}
{title:Options}

{phang}
{opt generate(namelist)} specifies the names to be used for the new variables in the output dataset. The number of 
names must match the number of variables in varlist. If not specified, the new variables will be named v1, v2, etc.

{marker examples}{...}
{title:Examples}

{pstd}Setup{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}Create all combinations of price and mpg{p_end}
{phang2}{cmd:. levelsof price, local(prices)}{p_end}
{phang2}{cmd:. levelsof mpg, local(mpgs)}{p_end}
{phang2}{cmd:. cross_grid price mpg}{p_end}

{pstd}Same as above but with custom variable names{p_end}
{phang2}{cmd:. cross_grid price mpg, generate(price_grid mpg_grid)}{p_end}

{pstd}Using three variables{p_end}
{phang2}{cmd:. cross_grid price mpg foreign, generate(price_new mpg_new foreign_new)}{p_end}

{marker results}{...}
{title:Stored results}

{pstd}
This command does not store results in {cmd:r()}.

{marker remarks}{...}
{title:Remarks}

{pstd}
The command preserves variable labels, formats, and value labels from the original variables.
The resulting dataset will have N1 * N2 * ... * Nk observations, where Ni is the number of unique
values in the i-th variable.

{marker author}{...}
{title:Author}

{pstd}Pablo Garcia-Guzman{p_end}
{pstd}EBRD{p_end}
{pstd}Email: garciagp@ebrd.com{p_end}


