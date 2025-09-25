import ProjectDescription

let name: Template.Attribute = .required("Name")

let template = Template(
  description: "requred: name",
  attributes: [name],
  items: [
    .file(
      path: "Features/\(name)/Data/\(name)Repository.swift",
      templatePath: "Repository.swift.stencil"
    ),
    .file(
      path: "Features/\(name)/Data/\(name)QueryService.swift",
      templatePath: "QueryService.swift.stencil"
    ),
    
    .file(
      path: "Features/\(name)/Usecase/\(name)Usecase.swift",
      templatePath: "Usecase.swift.stencil"
    ),
  ]
)
