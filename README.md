# Chef Cookbook DIY Github Action
### Workflow Details
Chef is widely used Infra as code technology in DevOps World. This specifc GitHub Action Workflow has been used for creating DIY deployment for Chef cookbooks. 
The below mentioned Continuous Integration aspects are covered in the Workflow,
- It checksout the code into Workspace
- Performs Cookbook Code Analysis using Cookstyle
- Executes the cookbook in Local mode and runs the RSpec unit test cases
- Packages the cookbooks using Berkshelf 
- Creates tar.gz archive of Cookbook packages
- In case of any workflow failures, it sends out email to respective developers and maintainers of the repository
