# Find serialDV

IF (NOT LIBSERIALDV_INCLUDE_DIR)
    FIND_PATH(LIBSERIALDV_INCLUDE_DIR dvcontroller.h)
ENDIF()

SET(LIBSERIAL_NAMES ${LIBSERIAL_NAMES} serialdv libserialdv)

IF (NOT LIBSERIALDV_LIBRARY)
    FIND_LIBRARY(LIBSERIALDV_LIBRARY NAMES ${LIBSERIALDV_NAMES} PATH)
ENDIF()

IF (LIBSERIALDV_INCLUDE_DIR AND LIBSERIALDV_LIBRARY)
    SET(LIBSERIALDV_FOUND TRUE)
ENDIF (LIBSERIALDV_INCLUDE_DIR AND LIBSERIALDV_LIBRARY)

IF (LIBSERIALDV_FOUND)
    IF (NOT SerialDV_FIND_QUIETLY)
        MESSAGE (STATUS "Found libserialdv: ${LIBSERIALDV_INCLUDE_DIR}, ${LIBSERIALDV_LIBRARY}")
    ENDIF (NOT SerialDV_FIND_QUIETLY)
ELSE (LIBSERIALDV_FOUND)
    IF (SerialDV_FIND_REQUIRED)
        MESSAGE (FATAL_ERROR "Could not find SerialDV")
    ENDIF (SerialDV_FIND_REQUIRED)
ENDIF (LIBSERIALDV_FOUND)

mark_as_advanced(LIBSERIALDV_INCLUDE_DIR LIBSERIALDV_LIBRARY)
