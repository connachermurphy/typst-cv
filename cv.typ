#let heading_size = 16pt
#let heading_font = "Futura"
#let body_font = "Lora"

#let wp_counter = counter("wp")


#let cv(
    name: "Name",
    email: "Email",
    date: "",
    body,
) = {
    set text(font: body_font, size: 12pt)
    set document(author: name, title: "CV Title Placeholder")
    
    show heading.where(level: 1): it => {
        // v(-6pt)
        text(it, font: heading_font, style: "normal", weight: "regular", size: heading_size)
    }

    align(
        [#text(name, font: heading_font, style: "normal", weight: "regular", size: heading_size) \
        #email \
        Last updated: #date]
        , center)
    // v(-12pt)
    // line(length: 100%)
    // v(-6pt)
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

// #let wp(
//     title: "Paper Title",
//     body
// ) = {
//     locate(loc => {
//         wp_counter.step()

//         let wp_counter_rev = wp_counter.final(loc).at(0) - wp_counter.at(loc).at(0)
//         set enum(start: wp_counter_rev)
//         [+ "#title." #body]
//     })
// }