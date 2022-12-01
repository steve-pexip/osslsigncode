if(NOT MSVC)
  find_package(bash-completion QUIET)

  if(BASH_COMPLETION_USER_DIR)
    set(BASH_COMPLETION_COMPLETIONSDIR ${BASH_COMPLETION_USER_DIR}/bash-completion/completions)
  endif(BASH_COMPLETION_USER_DIR)

  if(NOT BASH_COMPLETION_COMPLETIONSDIR)
    if(BASH_COMPLETION_COMPATDIR)
      set(BASH_COMPLETION_COMPLETIONSDIR ${BASH_COMPLETION_COMPATDIR})
    else(BASH_COMPLETION_COMPATDIR)
      set(SHAREDIR "${CMAKE_INSTALL_PREFIX}/share")
      set(BASH_COMPLETION_COMPLETIONSDIR "${SHAREDIR}/bash-completion/completions")
    endif(BASH_COMPLETION_COMPATDIR)
  endif(NOT BASH_COMPLETION_COMPLETIONSDIR)

  message(STATUS "Using bash completions dir ${BASH_COMPLETION_COMPLETIONSDIR}")
  install(FILES "osslsigncode.bash" DESTINATION ${BASH_COMPLETION_COMPLETIONSDIR})
endif(NOT MSVC)
