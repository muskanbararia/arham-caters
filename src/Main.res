switch ReactDOM.querySelector("#root") {
| Some(root) =>
  ReactDOM.render(
    <div className="h-screen overflow-hidden flex flex-col font-ibm-plex">
      <React.Suspense fallback={React.string("Loading...")}>
        <div> {React.string("HI")} </div>
      </React.Suspense>
    </div>,
    root,
  )
| None => ()
}
