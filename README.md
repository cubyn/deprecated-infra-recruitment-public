# Infra recruitment test

## Exercice 1: Terraform

Requirements: Terraform ([download and install instructions](https://www.terraform.io/downloads.html))

### Context

They are two files in the repository:

1. `database_production.tf`: contains variables and call the `database.tf`
2. `module_database/`: create a database

The actual code already create a postgresql database in US with an auto-resize disk. 
The goal of the exercise is to modify these files so that they create a second database to store GDPR data.

### Needs

- RDBMS: **MySQL 5.7**
- Disk size: **20GB**
- Instance: **db-f1-micro**
- Region: usually **us-central1** and **eu-west3**

You can modify the code to make it more clear but take care : this module could be used elsewhere in the code, be careful not to change its default behavior.

Documentation needed: https://www.terraform.io/docs/providers/google/r/sql_database_instance.html

### Setup

- Install Terraform
- Clone the repository
- Execute `terraform init` in the exercice_1 repository
- Execute `terraform validate`. It should work
- Modify files to create the new database

### Expected

```
user@host:~/git/infra-recruitment-public/exercice_1 $ terraform validate
Success! The configuration is valid.
```

## Exercice 2: scripting

Requirements: Bash, Python or JavaScript/TypeScript

## Context

Write a script that will:

- Count from [start] to [end],
- Arguments:
  - command (`string`): `default`, `reverse` or `help`
  - start (`int`)
  - end (`int`)
  - start < end

### Expected

```
./count-script default 1 3

1
2
3
```

```
./count-script reverse 0 2

2
1
0
```

```
./count-script help

count-script: default|reverse START END
START and END positive integer as START < END
```

Just display always the same error message when the arguments are bad.
```
./count-script whatever else argument 

count-script: default|reverse START END
START and END positive integer as START < END
```

## Tips

- Create a new branch with your name to propose your solution
- Answer the exercices should take about 1 to 2 hours

Feedbacks are welcome :)
