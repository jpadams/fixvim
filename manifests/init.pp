class fixvim {

  file { '/usr/share/vim/vimfiles/ftdetect/puppet.vim':
    ensure  => file,
    content => '" detect puppet filetype
au BufRead,BufNewFile *.pp              set filetype=puppet',
  } ->
  file { '/usr/share/vim/vimfiles/ftdetect/pe-puppet.vim':
    ensure => absent,
  } ->

  class { 'puppet_vim_env': }
}
