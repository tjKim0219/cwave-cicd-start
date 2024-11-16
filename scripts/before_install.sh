```yaml
version: 0.0
os: linux
files:
  - source: /
    destination: /home/ec2-user/app
permissions:
  - object: /home/ec2-user/app
    pattern: "**"
    owner: ec2-user
    group: ec2-user
    mode: 755
hooks:
  BeforeInstall:
    - location: scripts/before_install.sh
      timeout: 300
      runas: ec2-user
  ApplicationStart:
    - location: scripts/start_application.sh
      timeout: 300
      runas: ec2-user
  ApplicationStop:
    - location: scripts/stop_application.sh
      timeout: 300
      runas: ec2-user
  # ValidateService:
  #   - location: scripts/validate_service.sh
  #     timeout: 300
  #     runas: ec2-user
```