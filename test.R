library(tidyverse)
library(blastula)

compose_email(
  header = md(
    "<br>Test Email"),
  body = md(c(
    'body'
  )),
  footer = md(c('footer'))
) %>%
  smtp_send(
    from = 'ricko@odusa.org',
    to = 'ricko@odusa.org',
    subject = 'test 123',
    credentials = creds(
      user = '',
      provider = NULL,
      host = 'odusa-org.mail.protection.outlook.com',
      pass_envvar = Sys.getenv('test'),
      port = '',
      use_ssl = TRUE
      
    )
  )
