from talon import ui, Module, Context, registry, actions, imgui, cron

mod = Module()
ctx = Context()

ctx.matches = r"""
tag: user.python
"""

py_other_docs = {
    "pandas": "https://pandas.pydata.org/pandas-docs/stable/reference/index.html#api",
    "pandas cheat sheet": "https://github.com/pandas-dev/pandas/blob/master/doc/cheatsheet/Pandas_Cheat_Sheet.pdf",
}

py_stdlib_docs = {
    "ABC": "abc.html",
    "arg parse": "argparse.html",
    "argument parse": "argparse.html",
    "array": "array.html",
    "ast": "ast.html",
    "async hat": "asynchat.html",
    "async IO": "asyncio.html",
    "async core": "asyncore.html",
    "at exit": "atexit.html",
    "audio op": "audioop.html",
    "base sixty four": "base64.html",
    "BDB": "bdb.html",
    "binascii": "binascii.html",
    "bin hex": "binhex.html",
    "bisect": "bisect.html",
    "builtins": "builtins.html",
    "BZ2": "bz2.html",
    "calendar": "calendar.html",
    "CGI": "cgi.html",
    "cgitb": "cgitb.html",
    "chunk": "chunk.html",
    "C math": "cmath.html",
    "command": "cmd.html",
    "code": "code.html",
    "codecs": "codecs.html",
    "code op": "codeop.html",
    "collections": "collections.html",
    "color sys": "colorsys.html",
    "compile all": "compileall.html",
    "config parser": "configparser.html",
    "context lib": "contextlib.html",
    "context vars": "contextvars.html",
    "copy": "copy.html",
    "copy reg": "copyreg.html",
    "C Profile": "profile.html",
    "crypt": "crypt.html",
    "csv": "csv.html",
    "C types": "ctypes.html",
    "curses": "curses.html",
    "dataclasses": "dataclasses.html",
    "datetime": "datetime.html",
    "datetime format": "datetime.html#strftime-and-strptime-format-codes",
    "decimal": "decimal.html",
    "diff lib": "difflib.html",
    "diss": "dis.html",
    "dist utils": "distutils.html",
    "doc test": "doctest.html",
    "email": "email.html",
    "ensure pip": "ensurepip.html",
    "enum": "enum.html",
    "errno": "errno.html",
    "fault handler": "faulthandler.html",
    "fcntl": "fcntl.html",
    "file cmp": "filecmp.html",
    "file input": "fileinput.html",
    "fnmatch": "fnmatch.html",
    "fractions": "fractions.html",
    "FTP lib": "ftplib.html",
    "funk tools": "functools.html",
    "GC": "gc.html",
    "get opt": "getopt.html",
    "get pass": "getpass.html",
    "get text": "gettext.html",
    "glob": "glob.html",
    "graph lib": "graphlib.html",
    "grp": "grp.html",
    "G zip": "gzip.html",
    "hash lib": "hashlib.html",
    "heap Q": "heapq.html",
    "hmac": "hmac.html",
    "HTML": "html.html",
    "HTTP": "http.html",
    "imap lib": "imaplib.html",
    "imghdr": "imghdr.html",
    "import lib": "importlib.html",
    "inspect": "inspect.html",
    "IO": "io.html",
    "IP address": "ipaddress.html",
    "hitter tools": "itertools.html",
    "jason": "json.html",
    "keyword": "keyword.html",
    "lib two to three": "2to3.html",
    "line cache": "linecache.html",
    "locale": "locale.html",
    "logging": "logging.html",
    "logging format": "logging.html#logrecord-attributes",
    "LZMA": "lzma.html",
    "mailbox": "mailbox.html",
    "mail cap": "mailcap.html",
    "marshal": "marshal.html",
    "math": "math.html",
    "mime types": "mimetypes.html",
    "M map": "mmap.html",
    "module finder": "modulefinder.html",
    "MSI lib": "msilib.html",
    "msvcrt": "msvcrt.html",
    "multiprocessing": "multiprocessing.html",
    "net RC": "netrc.html",
    "nis": "nis.html",
    "NNTP lib": "nntplib.html",
    "numbers": "numbers.html",
    "operator": "operator.html",
    "OS": "os.html",
    "parser": "parser.html",
    "path lib": "pathlib.html",
    "PDB": "pdb.html",
    "pickle": "pickle.html",
    "pickle tools": "pickletools.html",
    "pipes": "pipes.html",
    "package util": "pkgutil.html",
    "platform": "platform.html",
    "P list lib": "plistlib.html",
    "pop lib": "poplib.html",
    "posix": "posix.html",
    "P print": "pprint.html",
    "profile": "profile.html",
    "P stats": "profile.html",
    "PTY": "pty.html",
    "PWD": "pwd.html",
    "pie compile": "py_compile.html",
    "pie clbr": "pyclbr.html",
    "pie doc": "pydoc.html",
    "queue": "queue.html",
    "quopri": "quopri.html",
    "random": "random.html",
    "re": "re.html",
    "read line": "readline.html",
    "reper lib": "reprlib.html",
    "resource": "resource.html",
    "RL completer": "rlcompleter.html",
    "run pie": "runpy.html",
    "shed": "sched.html",
    "secrets": "secrets.html",
    "select": "select.html",
    "selectors": "selectors.html",
    "shelve": "shelve.html",
    "shlex": "shlex.html",
    "shutil": "shutil.html",
    "signal": "signal.html",
    "site": "site.html",
    "SMTPD": "smtpd.html",
    "SMTP lib": "smtplib.html",
    "sndhdr": "sndhdr.html",
    "socket": "socket.html",
    "socket server": "socketserver.html",
    "SPWD": "spwd.html",
    "sequel light": "sqlite3.html",
    "sequel light three": "sqlite3.html",
    "ssl": "ssl.html",
    "stat": "stat.html",
    "statistics": "statistics.html",
    "string": "string.html",
    "string prep": "stringprep.html",
    "struct": "struct.html",
    "subprocess": "subprocess.html",
    "sunau": "sunau.html",
    "symbol": "symbol.html",
    "sim table": "symtable.html",
    "sis": "sys.html",
    "sis config": "sysconfig.html",
    "sis log": "syslog.html",
    "tab nanny": "tabnanny.html",
    "tar file": "tarfile.html",
    "telnet lib": "telnetlib.html",
    "temp file": "tempfile.html",
    "termios": "termios.html",
    "test": "test.html",
    "text wrap": "textwrap.html",
    "threading": "threading.html",
    "time": "time.html",
    "time it": "timeit.html",
    "tkinter": "tkinter.html",
    "token": "token.html",
    "tokenize": "tokenize.html",
    "trace": "trace.html",
    "traceback": "traceback.html",
    "trace malloc": "tracemalloc.html",
    "TTY": "tty.html",
    "turtle": "turtle.html",
    "turtle demo": "turtle.html",
    "types": "types.html",
    "typing": "typing.html",
    "unicode data": "unicodedata.html",
    "unit test": "unittest.html",
    "URL lib": "urllib.html",
    "UU": "uu.html",
    "UUID": "uuid.html",
    "venv": "venv.html",
    "warnings": "warnings.html",
    "wave": "wave.html",
    "weak ref": "weakref.html",
    "web browser": "webbrowser.html",
    "win reg": "winreg.html",
    "win sound": "winsound.html",
    "WSGI ref": "wsgiref.html",
    "XDR lib": "xdrlib.html",
    "XML": "xml.html",
    "zip app": "zipapp.html",
    "zip file": "zipfile.html",
    "zip import": "zipimport.html",
    "Z lib": "zlib.html",
    "zone info": "zoneinfo.html",
}


ctx.lists["user.doclinks"] = {
    **{k: f"https://docs.python.org/3/library/{v}" for k, v in py_stdlib_docs.items()},
    **py_other_docs,
}
