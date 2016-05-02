CONFIG += ordered

TEMPLATE = subdirs

SUBDIRS += src

!isEmpty(BUILD_EXAMPLES) {
    SUBDIRS += examples
    examples.depends = src
}
