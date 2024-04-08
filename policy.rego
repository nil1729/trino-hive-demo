package trino

import future.keywords.if

default allow = false

allow if {
	print("identity:", input.context.identity.user)
	print(input.action)

	1 == 1
}
