#let heading_size = 16pt
#let heading_font = "Futura"
#let body_font = "Lora"

#let wp_counter = counter("wp")


#let cv(
    name: "Name",
    body,
) = {
    set text(font: body_font, size: 12pt)
    set document(author: name, title: "CV Title Placeholder")
    
    show heading.where(level: 1): it => {
        v(-6pt)
        text(it, font: heading_font, style: "normal", weight: "regular", size: heading_size)
    }

    text(name, font: heading_font, style: "normal", weight: "regular", size: heading_size)
    v(-12pt)
    line(length: 100%)
    v(-6pt)
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

#let wp(
    title: "Paper Title",
    body
) = {
    locate(loc => {
        wp_counter.step()

        let wp_counter_rev = wp_counter.final(loc).at(0) - wp_counter.at(loc).at(0)
        set enum(start: wp_counter_rev)
        [+ "#title." #body]
    })
}

// #let problem_counter = counter("problem")

// #let prob(body) = {
//   // let current_problem = problem_counter.step()
//   [== Problem #problem_counter.step() #problem_counter.display()]
//   block(fill:rgb(250, 255, 250),
//    width: 100%,
//    inset:8pt,
//    radius: 4pt,
//    stroke:rgb(31, 199, 31),
//    body)
//   }

// // Some math operators
// #let prox = [#math.op("prox")]
// #let proj = [#math.op("proj")]
// #let argmin = [#math.arg]+[#math.min]


// // Initiate the document title, author...
// #let assignment_class(title, author, course_id, professor_name, semester, due_time, body) = {
//   set document(title: title, author: author)
//   set page(
//     paper:"us-letter", 
//     header: locate( 
//         loc => if (
//             counter(page).at(loc).first()==1) { none } 
//         else if (counter(page).at(loc).first()==2) { align(right, 
//               [*#author* | *#course_id: #title* | *Problem 1*]
//             ) }
//         else { 
//             align(right, 
//               [*#author* | *#course_id: #title* | *Problem #problem_counter.at(loc).first()*]
//             ) 
//         }
//     ), 
//     footer: locate(loc => {
//       let page_number = counter(page).at(loc).first()
//       let total_pages = counter(page).final(loc).last()
//       align(center)[Page #page_number of #total_pages]
//     }))