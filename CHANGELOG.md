## 0.0.7 (WIP)
- Update HTML / JS / CSS to AdminLTE 2.3.7
- Bumped 'bootstrap-sass' gem to 3.3.7 version
- Adding stylesheets correctly for 'sass' or 'scss' engine into the 'application.scss' file
- Fixed iCheck plugin css loading to use '@import url()'
- DRYed generators inheriting from a BaseGenerator
- Added 'font-awesome-rails' gem runtime dependency to DRY the .erb templates

## 0.0.6
- Remove Bootstrap's files and add it as dependency

## 0.0.5
- Update HTML / JS / CSS to AdminLTE 2.1.0
- Add Sidebar introduced in AdminteLTE 2.1.0

## 0.0.4
- Layout: add alert
- Layout: Add controller / action name to body
- New plugins:
  - [toastr](https://github.com/CodeSeven/toastr)

## 0.0.3
- Install Generator:
  - Create Login view without including Devise
- New plugins:
  - [slimScroll](https://github.com/rochal/jQuery-slimScroll)
  - [iCheck](https://github.com/fronteed/iCheck)
- FIX:
  - Install Generator: Use stylesheet_engine when injecting data in file
  - Plugin Generator: Use stylesheet_engine when injecting data in file
