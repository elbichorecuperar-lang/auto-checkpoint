if(NOT GEODE_LOADED)
    set(GEODE_LOADED TRUE)
    
    # Descarga e inicializa el CLI y SDK de Geode automáticamente en GitHub Actions
    if(NOT DEFINED GEODE_CLI)
        find_program(GEODE_CLI geode)
    endif()

    if(GEODE_CLI)
        execute_process(
            COMMAND ${GEODE_CLI} profile path
            OUTPUT_VARIABLE GEODE_CLI_PATH
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        set(GEODE_DIR "${GEODE_CLI_PATH}/framework" CACHE PATH "Geode Framework Directory")
    else()
        message(FATAL_ERROR "No se pudo encontrar el CLI de Geode. Asegúrate de tener instalado el entorno de Geode SDK.")
    endif()

    list(APPEND CMAKE_MODULE_PATH "${GEODE_DIR}/cmake")
    include(Geode)
endif()
