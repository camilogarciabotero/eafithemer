test_that("theme light works", {
  expect_equal(2 * 2, 4)
})

# palmerpenguins::penguins %>%
#   ggplot2::ggplot(aes(species, body_mass_g)) +
#   geom_col() +
#   labs(
#     title = "Little title",
#     subtitle = "Testing the subtitle",
#     x = "Titles of x axis",
#     caption = "First attemp on package creation"
#   ) +
#   theme_eafit_light()
#
# palmerpenguins::penguins %>%
#   ggplot2::ggplot(aes(species, body_mass_g)) +
#   geom_col() +
#   labs(
#     title = "Little title",
#     subtitle = "Testing the subtitle",
#     x = "Titles of x axis",
#     caption = "First attemp on package creation"
#   ) +
#   theme_eafit_dark()
