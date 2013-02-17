(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
 
;; Optional setup (Read Mail menu for Emacs 21):
(if (boundp 'read-mail-command)
    (setq read-mail-command 'mew))
 
;; Optional setup (e.g. C-xm for sending a message):
(autoload 'mew-user-agent-compose "mew" nil t)
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'mew-user-agent
      'mew-user-agent-compose
      'mew-draft-send-message
      'mew-draft-kill
      'mew-send-hook))

(setq mew-config-alist
      '(
        ;; Default fetch mailbox is IMAP
        (gmailbox
         (mailbox-type          imap)
         (proto                 "%")
         (imap-server           "imap.gmail.com")
         (imap-user             "xiii.1991@gmail.com")
         (name                  "User Mew")
         (user                  "xiii.1991")
         (mail-domain           "gmail.com")
         (imap-size             0)
         (imap-delete           t)
         (imap-queue-folder     "%queue")
         (imap-trash-folder     "%Trash") ;; This must be in concile with your IMAP box setup
         (smtp-auth-list        ("PLAIN" "LOGIN" "CRAM-MD5")) 
         (smtp-user             "xiii.1991@gmail.com")
         (smtp-server           "smtp.gmail.com")
  
	 ))


