require 'redmine'

Redmine::Plugin.register :redmine_landing_page do
  name 'Redmine Landing Page plugin'
  author 'Igor Zubkov'
  description 'Redmine Landing Page plugin'
  version '0.1.1'
  url 'https://github.com/biow0lf/redmine_landing_page'
  author_url 'https://github.com/biow0lf'
end

require_dependency 'projects_controller'
ProjectsController.send(:include, RedmineLandingPage::Patches::ProjectsControllerPatch)

require_dependency 'project'
Project.send(:include, RedmineLandingPage::Patches::ProjectPatch)

require_dependency 'principal'
User.send(:include, RedmineLandingPage::Patches::UserPatch)

require_dependency 'welcome_controller'
WelcomeController.send(:include, RedmineLandingPage::Patches::WelcomeControllerPatch)