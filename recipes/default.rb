#
# Cookbook Name:: variant_call_rna
# Recipe:: default
#
# Copyright (c) 2016 Jörgen Brandt, All Rights Reserved.

include_recipe "chef-cuneiform::default"
include_recipe "variant_call_rna::tools"
include_recipe "variant_call_rna::data"
include_recipe "variant_call_rna::workflow"