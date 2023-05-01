#let heading_size = 20pt
#let heading_font = "AppleGothic"

#let cv(
    name: "Name",
    body,
) = {
    set text(font: "Lora", size: 12pt)
    set document(author: name, title: "CV Title Placeholder")
    
    show heading.where(level: 1): it => {
        text(it, font: heading_font, style: "normal", size: heading_size)
    }

    text(name, font: heading_font, style: "normal", size: heading_size)
    v(-14pt)
    line(length: 100%)
    v(-14pt)
    body
}

#let education(
    institution: "Institution",
    degree: "Degree",
    date: "Date",
    body
) = {
    stack(dir: ltr,
    {
        [*#institution,* #degree]
    },
    {
        set align(right)
        date
    }
    )
}