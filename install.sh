#!/bin/bash

# Install module dependencies (might need to commit them for a production env)
puppet module install --modulepath=./modules puppetlabs-stdlib
puppet module install --modulepath=./modules gildas-homebrew

# Apply manifest within the context of our modules.
puppet apply ./manifests/default.pp --modulepath=./modules
