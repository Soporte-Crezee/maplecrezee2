#!/bin/sh
#------------------------------------------------------------------------------
# written by:   mcdaniel
#               https://lawrencemcdaniel.com
#
# date:         mar-2022
#
# usage:        Re-runs the Cookiecutter for this repository.
#------------------------------------------------------------------------------

GITHUB_REPO="gh:lpm0073/cookiecutter-openedx-devops"
GITHUB_BRANCH="main"
OUTPUT_FOLDER="../"

cookiecutter --checkout $GITHUB_BRANCH \
             --output-dir $OUTPUT_FOLDER \
             --overwrite-if-exists \
             --no-input \
             $GITHUB_REPO \
             global_platform_name=MapleCrezee \
             global_platform_region=usa-east \
             global_aws_region=us-east-1 \
             global_account_id=946896782606 \
             global_root_domain=abarrotics.com \
             global_aws_route53_hosted_zone_id=Z0845988PUZ5PGJKCW0S \
             environment_name=maplecrezee \
             environment_subdomain=cursos
