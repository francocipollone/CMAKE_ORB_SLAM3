###############################
#  Install External Packages  #
###############################

# Requirements
find_package(OpenCV REQUIRED)
# find_package(fmt REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
# include_directories(${fmt_INCLUDE_DIRS})

# External packages
include(ExternalProject)

ExternalProject_Add(
  DBoW2
  # GIT_REPOSITORY  https://github.com/dorian3d/DBoW2.git
  # GIT_TAG         v1.1-free
  SOURCE_DIR      ${PROJECT_SOURCE_DIR}/Thirdparty/DBoW2
  PREFIX          ${CMAKE_CURRENT_BINARY_DIR}/ExternalPackages/DBoW2
  INSTALL_DIR     ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/DBoW2  # This just add the information into the <INSTALL_DIR> place holder, user should use it.
  CMAKE_ARGS      -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR>
)

# ExternalProject_Add(
#   DLib
#   GIT_REPOSITORY  https://github.com/dorian3d/DLib.git
#   # GIT_TAG         v1.1-free
#   SOURCE_DIR      ${PROJECT_SOURCE_DIR}/Thirdparty/DBoW2/DUtils
#   PREFIX          ${CMAKE_CURRENT_BINARY_DIR}/ExternalPackages/DLib
#   INSTALL_DIR     ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/DLib  # This just add the information into the <INSTALL_DIR> place holder, user should use it.
#   CMAKE_ARGS      -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR>
# )

ExternalProject_Add(
  g2o
  # GIT_REPOSITORY  https://github.com/RainerKuemmerle/g2o.git
  # GIT_TAG         20200410_git # 20201223_git
  SOURCE_DIR      ${PROJECT_SOURCE_DIR}/Thirdparty/g2o
  PREFIX          ${CMAKE_CURRENT_BINARY_DIR}/ExternalPackages/g2o
  INSTALL_DIR     ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/g2o  # This just add the information into the <INSTALL_DIR> place holder, user should use it.
  CMAKE_ARGS      -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR>
)

ExternalProject_Add(
  Sophus
  # GIT_REPOSITORY  https://github.com/strasdat/Sophus.git
  # GIT_TAG         97e71617749a32b83cdd411591ebb2ede9d330f0 # e10eb6e00cecc3cbeebb893f8a739120de151156 # v1.1.0 version hasn't been released yet. So particular master's commit is targeted.
  SOURCE_DIR      ${PROJECT_SOURCE_DIR}/Thirdparty/Sophus
  PREFIX          ${CMAKE_CURRENT_BINARY_DIR}/ExternalPackages/Sophus
  INSTALL_DIR     ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/Sophus  # This just add the information into the <INSTALL_DIR> place holder, user should use it.
  CMAKE_ARGS      -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DUSE_BASIC_LOGGING=ON
)

# include directories
include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/DBoW2/include
  ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/DLib/include
  ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/g2o/include
  ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/Sophus/include
)

# install(
#   DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/DBoW2/include
#   DESTINATION include/${PROJECT_NAME}/Thirdparty
# )

# install(
#   DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/DLib/include
#   DESTINATION include/${PROJECT_NAME}/Thirdparty
# )

# install(
#   DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/g2o/include
#   DESTINATION include/${PROJECT_NAME}/Thirdparty
# )

# install(
#   DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/Thirdparty/Sophus/include
#   DESTINATION include/${PROJECT_NAME}/Thirdparty
# )
