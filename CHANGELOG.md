# Changelog

OCI Scheduled operations

Maintainer : [kral2]

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and the versioning try to follow the [Semantic Versioning 2.0.0](https://semver.org/) specification.

Given a version number MAJOR.MINOR.PATCH:

- MAJOR version when making incompatible API changes,
- MINOR version when adding functionality in a backwards compatible manner,
- PATCH version when making backwards compatible bug fixes.

## [0.7.0] - 2022-01-22

### Added

- ansible playbook to install/update homebrew packages

## [0.6.0] - 2021-10-01

### Added

- flush_dns.sh: a cli tool to flush macOS DNS cache

## [0.5.1] - 2021-09-08

### Changed

- cpu_info.sh: use bash function for command usage information

## [0.5.0] - 2021-09-08

### Added

- cpu_info.sh: show cpu specific information (brand, model, core count, thread count)  

## [0.4.0] - 2021-09-03

### Added

- show-hidden-files.sh: add command usage information  

## [0.3.0] - 2020-12-09

### Added

- setup_project-folder.sh : create a default project management folder structure

### Changed

Reorganize folder structure:

- scripts renamed to system-config

## [0.2.0] - 2020-12-08

### Added

- list-installed.sh : list custom taps in use in a seperate section

### Changed

- list-installed.sh : print formulae and casks versions instead of full name that include tap path

### Fixed

- list-installed.sh : outputfile use $HOME as base path

## [0.1.0] - 2020-12-03

### Added

- show-hidden-files.sh : true/false argument to enable/disable this setting
- list-installed.sh : list brew formulae/casks and Mac AppStore installed applications
- all scripts from old repo are under /scripts/from-old-repo/ they will need to be reviewed for relevance
