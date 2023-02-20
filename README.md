# Data Food Consortium connector code generator - Ruby version

This is a source code generator. The Ruby connector itself is available at https://github.com/datafoodconsortium/connector-ruby.

This repository is an Eclipse project using [Acceleo](https://wiki.eclipse.org/Acceleo): a framework to generate source code. This project is able to generate the Ruby source code of the DFC connector reading the [DFC UML model](https://github.com/datafoodconsortium/data-model-uml).

The generated files are exported into the `gen` folder.

The files into the `static` directory will be copied into the `gen` folder without any modification and with keeping the file structure.

Links:
- [DFC standard](https://datafoodconsortium.gitbook.io/)
- [DFC ontology](https://github.com/datafoodconsortium/ontology)
- [DFC website](https://datafoodconsortium.org)
- [DFC UML model](https://github.com/datafoodconsortium/data-model-uml)

## Setup

You should install Eclipse Modeling Tool, an Eclipse IDE version configured for modeling.

If not installed, you will have to install the [Acceleo framework](https://wiki.eclipse.org/Acceleo). To do so, you can use the Eclipse Marketplace following [this guide](https://wiki.eclipse.org/Acceleo/Installation).

Before to launch the generation, be sure to include the `connector-codegen-common` DFC package available on [Github](https://github.com/datafoodconsortium/connector-codegen-documentation). Go to the "Dependencies" tab in the `META-INF/MANIFEST.MF` file and click the "Add" button in the "Imported packages" section.

Then launch the process using the `.launch` file.

## How it works

The entry point is in the `src/generate.mtl` file.

Acceleo uses template files (`.mtl`) containing some templates like :

```
[template public generate(model: Model)]
...
[/template]
```

The content of the template is used to generate files. A `file` tag must be used like:

```
[file ('../connector.rb', false, 'UTF-8')]
...
[/file]
```

 Entry point template files must contain `[comment @main /]` as the first line.

To generate computed values you can use the following syntax: `[object.property /]` or `[callToAFunction() /]`. You can also do loops (`[for][/for]`), test condition (`[if][else][/if]`) and so on.

You can read more about Acceleo on the [Eclipse wiki](https://wiki.eclipse.org/Acceleo).