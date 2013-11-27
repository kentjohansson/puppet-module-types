# == Class: types
#
# Module to manage types
#
class types (
  $mounts = undef,
  $crons = undef,
) {

  if $crons != undef {
    validate_hash($crons)
    create_resources('types::cron',$crons)
  }
  if $mounts != undef {
    validate_hash($mounts)
    create_resources('types::mount',$mounts)
  }
}
