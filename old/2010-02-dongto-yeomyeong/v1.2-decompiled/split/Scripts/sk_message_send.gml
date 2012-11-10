//축적된메시지를보냅니다

global._39_message_save_+=chr(39)+" "+chr(39)

clearbuffer()
writestring(global._39_message_save_)
sendmessage(global._39_client_tcp_)

global._39_message_save_=""

// sk_message_send()
