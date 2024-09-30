.PHONY: test_win
test_win:
	kubectl exec -it ss-fluentd-0 -- sh -c 'echo ''{\"message\":\"hello!!\"}'' | fluent-cat debug.log'

.PHONY: test_linux
test_linux:
	kubectl exec -it ss-fluentd-0 -- sh -c 'printf "{\\"message\\":\\"hello!!\\"}" | fluent-cat debug.log'