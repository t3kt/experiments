import sys

pkgpath = project.folder + '/python-packages'

if pkgpath not in sys.path:
	sys.path.append(pkgpath)
