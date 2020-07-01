module.exports = async function(context, commands) {
    // Remove body of the page for visual metrics to start with blank view
    context.log.info("-----------------> Clearing view <----------------");
    await commands.js.run('document.body.innerHTML = ""');
};