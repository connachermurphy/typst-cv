#let items = (
    ["Changes in the Distribution of Economic Well-Being during the COVID-19 Pandemic: Evidence from Nationally Representative Consumption Data" (with Bruce D. Meyer and James X. Sullivan), NBER working paper w29878. #link("https://www.nber.org/papers/w29878")[NBER]. #link("https://bfi.uchicago.edu/working-paper/changes-in-the-distribution-of-economic-well-being-during-the-covid-19-pandemic-evidence-from-nationally-representative-consumption-data/")[BFI].],
).rev()

#enum(..items, numbering: it => numbering("1.", items.len() + 1 - it))