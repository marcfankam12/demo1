# Les librairies necessaires

library(tidyverse)
library(robotoolbox)

# se connecter à notre compte kobo

kobo_setup(url="https://kf.kobotoolbox.org",
           token = Sys.getenv('MY_TOKEN'))

# se connecter à un formulaire specifique

asset = kobo_asset(Sys.getenv('MY_UID'))

asset |>
  kobo_asset() |>
  kobo_data() |>
  write_rds('df.rds')
