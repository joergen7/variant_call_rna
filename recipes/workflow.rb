#
# Cookbook Name:: variant_call_rna
# Recipe:: workflow
#
# Copyright (c) 2016 Jörgen Brandt, All Rights Reserved.

# create workflow directory
directory node["dir"]["wf"]

# place workflow
template "#{node["dir"]["wf"]}/variant_call_rna.cf" do
  source "variant_call_rna.cf.erb"
end
