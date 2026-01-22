head(gapminder_data)
str(gapminder_data)
gap_wide <- read.csv(gapminder_wide)
gap_wide <- gapminder_wide
str(gap_wide)
gap_long <- gap_wide %>% pivot_longer(cols = c(starts_with('pop'), 
                                               starts_with('lifeExp'), 
                                               starts_with('gdpPercap')), 
                                      names_to = "obstype_year",
                                      values_to = "obs_values")
gap_long
str(gap_long)
gap_long <- gap_wide %>% 
  pivot_longer(
    cols = c(-continent, -country),
    names_to = "obstype_year", 
    values_to = "obs_value")
tail(gap_long)
head(gap_long)
gap_long <- gap_long %>%
  separate(col = "obstype_year",
           into = c('obstype', 'year'), 
           sep = "_")
gap_long$year <- as.integer(gap_long$year)
gap_long
