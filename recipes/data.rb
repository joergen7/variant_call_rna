#
# Cookbook Name:: variant_call_rna
# Recipe:: data
#
# Copyright (c) 2016 Jörgen Brandt, All Rights Reserved.

fq_dir = "#{node["dir"]["data"]}/files"
hg38_dir = fq_dir

url_base = "ftp://ftp.ddbj.nig.ac.jp/ddbj_database/dra/fastq/SRA062/SRA062599/SRX209065"
url_id = "SRR629569"

hg38_url_base = "ftp://gsapubftp-anonymous:@ftp.broadinstitute.org/bundle/hg38/hg38bundle"
hg38_filelist = ["Homo_sapiens_assembly38.fasta.gz",
                 "Mills_and_1000G_gold_standard.indels.hg38.vcf.gz"]


url = "#{url_base}/#{url_id}_1.fastq.bz2"

directory node["dir"]["data"]
directory fq_dir

remote_file "#{fq_dir}/#{File.basename( url )}" do
  action :create_if_missing
  source url
  retries 1
end

hg38_filelist.each { |file|

  remote_file "#{hg38_dir}/#{file}" do
    action :create_if_missing
    source "#{hg38_url_base}/#{file}"
    retries 1
  end
}