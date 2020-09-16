import osproc
# import .. / displays / askKill


proc start*() =
  const
    command = "gksudo /usr/sbin/service anonsurfd start"
  # initAskDialog()
  # TODO check killall
  let runResult = execCmd(command)
  if runResult == 0:
    discard # sendnotify done
  else:
    discard # send notify failed


proc stop*() =
  const
    command = "gksudo /usr/sbin/service anonsurfd stop"
  # TODO kill app
  # TODO check kill app
  let runResult = execCmd(command)
  if runResult == 0:
    discard # send notify done
  else:
    discard # send notify failed


proc restart*() =
  const
    command = "gksudo /usr/sbin/service anonsurfd restart"
  let runResult = execCmd(command)
  if runResult == 0:
    discard # send NOtify done
  else:
    discard # send notify failed
