// Place your Spring DSL code here
beans = {
    //TODO: Verificar melhor forma para configura o local
    localeResolver(org.springframework.web.servlet.i18n.SessionLocaleResolver) {
        defaultLocale = new Locale("pt","BR")
        java.util.Locale.setDefault(defaultLocale)
    }
}