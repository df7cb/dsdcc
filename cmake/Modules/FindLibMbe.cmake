# Find libmbe

IF (NOT LIBMBE_INCLUDE_DIR)
    FIND_PATH(LIBMBE_INCLUDE_DIR mbelib.h)
ENDIF()

SET(LIBMBE_NAMES ${LIBMBE_NAMES} mbe libmbe)

IF (NOT LIBMBE_LIBRARY)
    FIND_LIBRARY(LIBMBE_LIBRARY NAMES ${LIBMBE_NAMES} PATH)
ENDIF()

IF (LIBMBE_INCLUDE_DIR AND LIBMBE_LIBRARY)
    SET(LIBMBE_FOUND TRUE)
ENDIF (LIBMBE_INCLUDE_DIR AND LIBMBE_LIBRARY)

IF (LIBMBE_FOUND)
    IF (NOT LibMbe_FIND_QUIETLY)
        MESSAGE (STATUS "Found LibMbe: ${LIBMBE_INCLUDE_DIR}, ${LIBMBE_LIBRARY}")
    ENDIF (NOT LibMbe_FIND_QUIETLY)
ELSE (LIBMBE_FOUND)
    IF (LibMbe_FIND_REQUIRED)
        MESSAGE (FATAL_ERROR "Could not find mbe")
    ENDIF (LibMbe_FIND_REQUIRED)
ENDIF (LIBMBE_FOUND)

mark_as_advanced(LIBMBE_INCLUDE_DIR LIBMBE_LIBRARY)
