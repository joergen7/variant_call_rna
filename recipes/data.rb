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



directory node["dir"]["data"]
directory fq_dir

["1", "2"].each { |i|

  url    = "#{url_base}/#{url_id}_#{i}.fastq.bz2"
  fq_bz2 = "#{fq_dir}/#{File.basename( url )}"
  fq     = "#{fq_dir}/#{url_id}_#{i}.fastq"

  remote_file fq_bz2 do
    action :create_if_missing
    source url
    retries 1
    not_if File.exists?( fq )
  end

  bash "extract_fq_#{i}" do
    code "bunzip2 #{fq_bz2}"
    creates fq
  end

}

hg38_filelist.each { |file|

  remote_file "#{hg38_dir}/#{file}" do
    action :create_if_missing
    source "#{hg38_url_base}/#{file}"
    retries 1
  end
}