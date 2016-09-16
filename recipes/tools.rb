#
# Cookbook Name:: variant_call_rna
# Recipe:: tools
#
# Copyright (c) 2016 Jörgen Brandt, All Rights Reserved.

include_recipe "chef-bioinf-worker::picard"
incluce_recipe "chef-bioinf-worker::gatk"
include_recipe "chef-bioinf-worker::fastqc"
include_recipe "chef-bioinf-worker::samtools"
include_recipe "chef-bioinf-worker::star"
include_recipe "chef-bioinf-worker::jannovar"