
See what changes will be made by running:
    terraform plan -var "zone_id=<zone_id>" -var "medium_cname_domain=<from medium support>" -var "medium_cname_target=<from medium support>"

Make the actual changes by running:
    terraform apply -var "zone_id=<zone_id>" -var "medium_cname_domain=<from medium support>" -var "medium_cname_target=<from medium support>"
