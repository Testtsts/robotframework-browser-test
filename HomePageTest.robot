*** Settings ***
Library    Browser

Resource    ./pages.robot

Suite Setup    New Browser    browser=chromium    headless=false
Test Setup    Run Keyword    BeforeEach
Test Teardown    Close Context
Suite Teardown    Close Browser

*** Keywords ***
BeforeEach
    New Context
    The User Visit Homepage
    ${current_url}    Get Url
    Should Be Equal As Strings    ${current_url}    ${HOMEPAGE_URL}

*** Test Cases ***
Should redirect user to new page when clicking #GenZMemilih 
    When User Click Genz Memilih
    ${main_page}    Switch Page    NEW
    ${current_url}    Get Url
    Should Be Equal As Strings    ${current_url}    ${GENZ_MEMILIH_URL}
    # ${new_page}    Switch Page    ${main_page}
    # Close Page    page=${new_page}
    
Should redirect to login page when clicking Daftar/Masuk
    When User Click Join Button
    ${current_url}    Get Url
    Should Contain    ${current_url}    ${LOGIN_URL}
    
Should redirect to doctor profile when clicking Profil Dokter
    When User Click Profil Dokter
    ${main_page}    Switch Page    NEW
    ${current_url}    Get Url
    Should Contain    ${current_url}    ${PROFIL_DOKTER_URL}

Should redirect to login page when clicking Community Menu
    When User Click Community Menu
    ${current_url}    Get Url
    Should Contain    ${current_url}    ${LOGIN_URL}

Should redirect to selected news page when clicking headline news
    When User Click Tech Menu
    ${current_url}    Get Url
    Should Contain    ${current_url}    ${TECH_PATH}
    When User Click Business Menu
    ${current_url}    Get Url
    Should Contain    ${current_url}    ${BUSINESS_PATH}
    When User Click Health Menu
    ${current_url}    Get Url
    Should Contain    ${current_url}    ${HEALTH_PATH}

Should redirect to career page when clicking career sidebar
    When User Click Career Sidebar
    ${main_page}    Switch Page    NEW
    ${current_url}    Get Url
    Should Contain    ${current_url}    ${CAREER_URL}

