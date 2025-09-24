import ProjectDescription

let name: Template.Attribute = .required("Name")     // e.g. Post

let template = Template(
  description: "requred: name",
  attributes: [name],
  items: [
    .file(
      path: "Features/\(name)/Domain/\(name)Repository.swift",
      templatePath: "Repository.swift.stencil"
    ),
    .file(
      path: "Features/\(name)/Query/\(name)QueryService.swift",
      templatePath: "QueryService.swift.stencil"
    ),
  ]
)
