name 'variant_call_rna'
maintainer 'Jörgen Brandt'
maintainer_email 'brandjoe@hu-berlin.de'
license 'all_rights'
description 'Installs/Configures variant_call_rna'
long_description 'Installs/Configures variant_call_rna'
version '0.1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/variant_call_rna/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/variant_call_rna' if respond_to?(:source_url)

depends "chef-bioinf-worker"
depends "chef-cuneiform"