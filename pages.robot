*** Settings ***
Library    Browser
Library    random

*** Variables ***

${HOMEPAGE_URL}    https://www.idntimes.com/
${GENZ_MEMILIH_BTN}    text=#GenZMemilih
${GENZ_MEMILIH_URL}    https://www.genzmemilih.idntimes.com/
${JOIN_BTN}    [data-testid="join-btn"]
${LOGIN_URL}    https://connect.idn.media/
${PROFIL_DOKTER_BTN}    text=Profil Dokter
${PROFIL_DOKTER_URL}    https://profil.idntimes.com/
${COMMUNITY_MENU_BUTTON}    [data-testid="menu-community-link"]
${BUSINESS_MENU_BUTTON}    [data-testid="menu-business-link"]
${BUSINESS_PATH}    /business
${TECH_MENU_BUTTON}    [data-testid="menu-tech-link"]
${TECH_PATH}    /tech
${HEALTH_MENU_BUTTON}    [data-testid="menu-health"]
${HEALTH_PATH}    /health
${CAREER_BTN}    [data-testid="sidebar-career"]>a
${CAREER_URL}    https://www.idn.media/career
${SCROLL_LEFT_POPULAR_TOPIC}    id=scroll_left
${SCROLL_RIGHT_POPULAR_TOPIC}    id=scroll_right

*** Keywords ***
The User Visit Homepage
    New Page    ${HOMEPAGE_URL}    wait_until=domcontentloaded

User Click Genz Memilih
    Click    ${GENZ_MEMILIH_BTN}    

User Click Join Button
    Click    ${JOIN_BTN}
    
User Click Profil Dokter
    Click    ${PROFIL_DOKTER_BTN}

User Click Community Menu
    Click    ${COMMUNITY_MENU_BUTTON}

User Click Business Menu
    Click    ${BUSINESS_MENU_BUTTON}

User Click Tech Menu
    Click    ${TECH_MENU_BUTTON}

User Click Health Menu
    Click    ${HEALTH_MENU_BUTTON}

User Click Career Sidebar
    Click    ${CAREER_BTN}

