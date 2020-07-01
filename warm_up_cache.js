module.exports = async function(context, commands) {
    let urlToWarmUp = context.options.urlToWarmUp;
    context.log.info("Warming up cache for page: " + urlToWarmUp);
    await commands.navigate(urlToWarmUp + "?warmup=true");
    // Remove body of the page for visual metrics to start with blank view
    await commands.js.run('document.body.innerHTML = ""');
};