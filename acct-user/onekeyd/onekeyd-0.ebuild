EAPI=8

inherit acct-user
ACCT_USER_ID=-1
ACCT_USER_GROUPS=( ${PN} plugdev )

DESCRIPTION="OneKey Communication Daemon (written in Go)"
acct-user_add_deps
