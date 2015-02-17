module.exports = Codepainter =
  codepainterView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    atom.commands.add 'atom-workspace', "codepainter:beautify", => @beautify()

  beautify: ->
    editor = atom.workspace.getActivePaneItem()
    var text = editor.getText();
    editor.setText()

