class nginx (
  String $ensure			= $::nginx::params::ensure,
  String $package_name			= $::nginx::params::package_name,
  String $config_dir			= $::nginx::params::config_dir,
  String $config_ensure			= $::nginx::params::config_ensure,
  String $config_mode			= $::nginx::params::config_mode,
  String $config_owner			= $::nginx::params::config_owner,
  String $config_group  		= $::nginx::params::config_group,
  String $config_confd			= $::nginx::params::config_confd,
  String $config_log_dir		= $::nginx::params::config_log_dir,
  String $config_pid_file		= $::nginx::params::config_pid_file,
  Optional[String] $config_vdir_enable	= $::nginx::params::config_vdir_enable,
  String $config_process_user		= $::nginx::params::config_process_user,
  String $service_pattern		= $::nginx::params::service_pattern,
  String $service_ensure		= $::nginx::params::service_ensure,
  String $service_name			= $::nginx::params::service_name,
  String $service_enable		= $::nginx::params::service_enable,
  String $service_hasstatus		= $::nginx::params::service_hasstatus,
  String $service_hasrestart		= $::nginx::params::service_hasrestart,
  String $docroot			= $::nginx::params::docroot,
  ) inherits ::nginx::params {
  
  class { '::nginx::install': }
  -> class { '::nginx::config': }
  ~> class { '::nginx::service': }
}