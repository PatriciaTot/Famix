# Famix

Famix is an abstract representation of source code. It is generic and can describe applications in multiple programming languages.

  - [Installation](#installation)
  - [Documentation](#documentation)
  - [Version management](#version-management)
  - [Smalltalk versions compatibility](#smalltalk-versions-compatibility)
  - [Contact](#contact)

## Installation

To install the project on your Pharo image, execute the following script: 

```Smalltalk
Metacello new
	githubUser: 'moosetechnology' project: 'Famix' commitish: 'development' path: 'src';
	baseline: 'Famix';
	load
```

To add the project to your baseline:

```Smalltalk
spec
	baseline: 'Famix'
	with: [ spec repository: 'github://moosetechnology/Famix:development/src' ]
```

Note you can replace the #master by another branch such as #development or a tag such as #v1.0.0, #v1.? or #v1.2.? .

## Documentation

TODO

## Version management 

This project use semantic versioning to define the releases. This means that each stable release of the project will be assigned a version number of the form `vX.Y.Z`. 

- **X** defines the major version number
- **Y** defines the minor version number 
- **Z** defines the patch version number

When a release contains only bug fixes, the patch number increases. When the release contains new features that are backward compatible, the minor version increases. When the release contains breaking changes, the major version increases. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Smalltalk versions compatibility

| Version 	| Compatible Pharo versions 	|
|-------------	|---------------------------	|
| development      	| Pharo 80		|

## Contact

If you have any questions or problems do not hesitate to open an issue or contact cyril (a) ferlicot.me 
