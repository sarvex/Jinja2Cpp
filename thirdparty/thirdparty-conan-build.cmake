message(STATUS "'conan-build' dependencies mode selected for Jinja2Cpp. All dependencies are taken as a conan packages")

find_package(expected-lite REQUIRED)
find_package(variant-lite REQUIRED)
find_package(optional-lite REQUIRED)
find_package(string-view-lite REQUIRED)
find_package(nlohmann_json REQUIRED)

find_package(Boost COMPONENTS algorithm filesystem json optional variant REQUIRED)
set(CONAN_BOOST_PACKAGE_NAME Boost::boost)
find_package(fmt REQUIRED)
find_package(rapidjson REQUIRED)

set(JINJA2_PRIVATE_LIBS_INT ${CONAN_BOOST_PACKAGE_NAME} fmt::fmt rapidjson::rapidjson nlohmann_json::nlohmann_json)
set(JINJA2_PUBLIC_LIBS_INT nonstd::expected-lite nonstd::variant-lite nonstd::optional-lite nonstd::string-view-lite)
