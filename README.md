# vcenter-terraform
Terraform делает виртуальные машины Ubuntu 22.04.03 LTS в тестовом кластере. Используется шаблон "bokhanych-ubuntu22-template" для клонирования.

## Подготовка:
- Установка Terraform (и другие уроки): https://www.youtube.com/watch?v=9k5Xsm6ZRiY&list=PLg5SS_4L6LYujWDTYb-Zbofdl44Jxb2l8&index=2
- terraform.tfvars - должен содержать ваши креды от vcenter.
- variables.tf - задать параметры для создаваемых машин. Можно указывать любое количество машин.
- команды управления должны запускаться в папке проекта


## Первичная инициализация terraform. Делается при первом запуске, требует VPN из-за санкций:
```
terraform init
```
### Показывает план работ (объекты, параметры):
```
terraform plan
```
### Запуск создания машин с автоподтверждением:
```
terraform apply -auto-approve
```
### Удаление машин с автоподтверждением:
```
terraform destroy -auto-approve
```


`*P.S. на случай изменения образа для шаблона:
- Решение проблемы с machine-id: https://kb.vmware.com/s/article/82229*`
