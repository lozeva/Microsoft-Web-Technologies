// Функция за показване на избрания таб и свързаното с него съдържание
function showTab(panelClass) {
    // Премахва класа 'active' от всички съдържателни панели
    document.querySelectorAll('.tab-pane').forEach((pane) => {
        pane.classList.remove('active');
    });

    // Премахва класа 'active' от всички табове
    document.querySelectorAll('.tab').forEach((tab) => {
        tab.classList.remove('active');
    });

    // Добавя класа 'active' към целевия съдържателен панел
    const contentPane = document.querySelector(`.${panelClass}`);
    if (contentPane) {
        contentPane.classList.add('active');
    }

    // Добавя класа 'active' към кликнатия таб
    const clickedTab = document.querySelector(`[onclick*="${panelClass}"]`);
    if (clickedTab) {
        clickedTab.classList.add('active');
    }
}
