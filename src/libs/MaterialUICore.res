type themeColor = [#primary]
type size = [#small | #medium | #large]
type variant = [#circular | #outlined | #contained]
type formComponent = [#legend | #fieldset]
type placement = [#"right-start" | #bottom]
type textFieldProps = {
  inputMode: [#numeric],
  pattern: string,
}

module Button = {
  @module("@material-ui/core") @react.component
  external make: (
    ~variant: variant=?,
    ~onClick: ReactEvent.Mouse.t => 'a=?,
    ~style: ReactDOMStyle.t=?,
    ~placeholder: string=?,
    ~size: size=?,
    ~className: string=?,
    ~color: themeColor=?,
    ~startIcon: React.element=?,
    ~disabled: bool=?,
    ~autoFocus: bool=?,
    ~children: React.element,
    ~className: string=?,
    ~autoFocus: bool=?,
  ) => React.element = "Button"
}

module TextField = {
  @module("@material-ui/core") @react.component
  external make: (
    ~select: bool=?,
    ~size: size=?,
    ~variant: variant=?,
    ~value: string,
    ~placeholder: string=?,
    ~error: bool=?,
    ~required: bool=?,
    ~autoFocus: bool=?,
    ~inputProps: textFieldProps=?,
    ~onChange: ReactEvent.Form.t => unit=?,
    ~style: ReactDOMStyle.t=?,
    ~color: themeColor=?,
    ~label: string=?,
    ~children: React.element=?,
    ~className: string=?,
  ) => React.element = "TextField"
}

module Radio = {
  @module("@material-ui/core") @react.component
  external make: (
    ~size: size=?,
    ~checked: bool=?,
    ~value: int=?,
    ~inputProps: {..}=?,
    ~color: themeColor=?,
  ) => React.element = "Radio"
}

module Modal = {
  @module("@material-ui/core") @react.component
  external make: (
    ~\"open": bool,
    ~onClose: unit => unit,
    ~children: React.element,
  ) => React.element = "Modal"
}
module Accordion = {
  @module("@material-ui/core") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~children: React.element,
    ~onChange: (ReactEvent.Form.t, bool) => unit=?,
    ~expanded: bool=?,
    ~disabled: bool=?,
  ) => React.element = "Accordion"
}
module AccordionSummary = {
  @module("@material-ui/core") @react.component
  external make: (
    ~className: string=?,
    ~children: React.element,
    ~expandIcon: React.element=?,
  ) => React.element = "AccordionSummary"
}
module AccordionDetails = {
  @module("@material-ui/core") @react.component
  external make: (
    ~className: string=?,
    ~style: ReactDOMStyle.t=?,
    ~children: React.element,
  ) => React.element = "AccordionDetails"
}

module Stepper = {
  @module("@material-ui/core") @react.component
  external make: (
    ~activeStep: int,
    ~style: ReactDOMStyle.t=?,
    ~children: React.element,
  ) => React.element = "Stepper"
}
module Step = {
  @module("@material-ui/core") @react.component
  external make: (~completed: bool, ~children: React.element) => React.element = "Step"
}

module StepLabel = {
  @module("@material-ui/core") @react.component
  external make: (~children: React.element) => React.element = "StepLabel"
}

module Slider = {
  @module("@material-ui/core") @react.component
  external make: (
    ~value: int,
    ~min: int,
    ~max: int,
    ~onChange: ReactEvent.Form.t => unit,
    ~style: ReactDOMStyle.t=?,
  ) => React.element = "Slider"
}

module Switch = {
  @module("@material-ui/core") @react.component
  external make: (
    ~checked: bool,
    ~onChange: ReactEvent.Form.t => unit=?,
    ~style: ReactDOMStyle.t=?,
    ~color: themeColor=?,
    ~size: size=?,
  ) => React.element = "Switch"
}

type chipSize = [#small]
module Chip = {
  @module("@material-ui/core") @react.component
  external make: (
    ~size: chipSize=?,
    ~label: string,
    ~style: ReactDOMStyle.t=?,
    ~onDelete: (ReactEvent.Mouse.t, Js.Json.t) => unit=?,
    ~onChange: ReactEvent.Form.t => unit=?,
  ) => React.element = "Chip"
}

type toolTipTransitionComponent

@module("@material-ui/core")
external zoom: toolTipTransitionComponent = "Zoom"

module Tooltip = {
  @module("@material-ui/core") @react.component
  external make: (
    ~title: React.element,
    ~style: ReactDOMStyle.t=?,
    ~children: React.element,
    ~\"TransitionComponent": toolTipTransitionComponent=?,
    ~placement: placement=?,
  ) => React.element = "Tooltip"
}

module Dialog = {
  @module("@material-ui/core") @react.component
  external make: (
    ~\"open": bool,
    ~onClose: unit => unit,
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "Dialog"
}
module DialogTitle = {
  @module("@material-ui/core") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "DialogTitle"
}
module DialogContent = {
  @module("@material-ui/core") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "DialogContent"
}
module DialogActions = {
  @module("@material-ui/core") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "DialogActions"
}

module Checkbox = {
  @module("@material-ui/core") @react.component
  external make: (
    ~checked: bool,
    ~className: option<string>=?,
    ~onChange: option<unit => unit>=?,
  ) => React.element = "Checkbox"
}

module Divider = {
  @module("@material-ui/core") @react.component
  external make: (~className: string=?, ~style: ReactDOMStyle.t=?) => React.element = "Divider"
}

type materialComponents = {paper: ReactDOMStyle.t}

@module("@material-ui/core")
external withStyles: (materialComponents, React.element) => unit = "withStyles"

module Menu = {
  type direction = [#top | #right | #center]
  type positioning = {
    vertical: direction,
    horizontal: direction,
  }

  @module("@material-ui/core") @react.component
  external make: (
    ~onClick: ReactEvent.Form.t => unit=?,
    ~className: string=?,
    ~children: React.element=?,
    ~style: ReactDOMStyle.t=?,
    ~id: string=?,
    ~anchorEl: Js.Nullable.t<Dom.element>=?,
    ~anchorOrigin: positioning=?,
    ~transformOrigin: positioning=?,
    ~\"open": bool=?,
    ~onClose: unit => unit=?,
    ~keepMounted: bool=?,
  ) => React.element = "Menu"
}
module MenuItem = {
  @module("@material-ui/core") @react.component
  external make: (
    ~onClick: ReactEvent.Form.t => unit=?,
    ~className: string=?,
    ~children: React.element=?,
    ~value: string=?,
    ~style: ReactDOMStyle.t=?,
  ) => React.element = "MenuItem"
}

module Badge = {
  @module("@material-ui/core") @react.component
  external make: (
    ~onClick: ReactEvent.Form.t => unit=?,
    ~className: string=?,
    ~badgeContent: string=?,
    ~children: React.element=?,
    ~style: ReactDOMStyle.t=?,
  ) => React.element = "Badge"
}

module Avatar = {
  @module("@material-ui/core") @react.component
  external make: (
    ~variant: variant=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~style: ReactDOMStyle.t=?,
    ~children: React.element=?,
  ) => React.element = "Avatar"
}

module Select = {
  @module("@material-ui/core") @react.component
  external make: (
    ~variant: variant=?,
    ~size: size=?,
    ~label: string=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~label: string=?,
    ~placeholder: string=?,
    ~error: bool=?,
    ~required: bool=?,
    ~autoFocus: bool=?,
    ~value: string,
    ~onChange: ReactEvent.Form.t => unit,
    ~children: React.element=?,
  ) => React.element = "Select"
}

module Card = {
  @module("@material-ui/core") @react.component
  external make: (
    ~className: string=?,
    ~style: ReactDOMStyle.t=?,
    ~children: React.element=?,
  ) => React.element = "Card"
}
module CardContent = {
  @module("@material-ui/core") @react.component
  external make: (
    ~className: string=?,
    ~style: ReactDOMStyle.t=?,
    ~children: React.element=?,
  ) => React.element = "CardContent"
}

module Drawer = {
  type anchorDirection = [#left | #right]

  @module("@material-ui/core") @react.component
  external make: (
    ~anchor: anchorDirection,
    ~\"open": bool,
    ~onClose: ReactEvent.Mouse.t => unit,
    ~children: React.element=?,
  ) => React.element = "Drawer"
}

module ThemeProvider = {
  type theme
  @module("@material-ui/core") @react.component
  external make: (~theme: theme, ~children: React.element=?) => React.element = "ThemeProvider"
}

module Grid = {
  @module("@material-ui/core") @react.component
  external make: (
    ~container: option<bool>=?,
    ~direction: [#row | #column]=?,
    ~item: option<bool>=?,
    ~children: React.element=?,
    ~className: string=?,
    ~style: ReactDOMStyle.t=?,
  ) => React.element = "Grid"
}

module FormControl = {
  @module("@material-ui/core") @react.component
  external make: (
    ~component: formComponent=?,
    ~children: React.element=?,
    ~style: ReactDOMStyle.t=?,
  ) => React.element = "FormControl"
}

module FormLabel = {
  @module("@material-ui/core") @react.component
  external make: (
    ~component: formComponent=?,
    ~children: React.element=?,
    ~style: ReactDOMStyle.t=?,
  ) => React.element = "FormLabel"
}

module InputLabel = {
  @module("@material-ui/core") @react.component
  external make: (~id: string=?, ~color: string=?, ~children: React.element=?) => React.element =
    "InputLabel"
}

module FormControlLabel = {
  @module("@material-ui/core") @react.component
  external make: (
    ~value: string,
    ~style: ReactDOMStyle.t=?,
    ~label: React.element,
    ~control: React.element,
    ~labelPlacement: placement=?,
  ) => React.element = "FormControlLabel"
}

module RadioGroup = {
  @module("@material-ui/core") @react.component
  external make: (
    ~row: bool=?,
    ~\"aria-label": string=?,
    ~value: string,
    ~style: ReactDOMStyle.t=?,
    ~onChange: ReactEvent.Form.t => unit=?,
    ~name: string=?,
    ~children: React.element=?,
  ) => React.element = "RadioGroup"
}

module TextareaAutosize = {
  @module("@material-ui/core") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~value: string=?,
    ~onChange: ReactEvent.Form.t => unit,
  ) => React.element = "TextareaAutosize"
}

module LinearProgress = {
  @module("@material-ui/core") @react.component
  external make: (
    ~color: [#primary | #secondary]=?,
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~variant: [#static | #determinate | #indeterminate]=?,
    ~value: int=?,
    ~progress: int=?,
  ) => React.element = "LinearProgress"
}
module TabContext = {
  @module("@mui/lab") @react.component
  external make: (
    ~color: [#primary | #secondary]=?,
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~value: string=?,
    ~progress: int=?,
    ~children: React.element=?,
  ) => React.element = "TabContext"
}
module Box = {
  @module("@material-ui/core") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~value: string=?,
    ~progress: int=?,
    ~children: React.element=?,
  ) => React.element = "Box"
}
module TabList = {
  @module("@mui/lab") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~value: string=?,
    ~onChange: (ReactEvent.Form.t, string) => unit=?,
    ~children: React.element=?,
  ) => React.element = "TabList"
}
module Tab = {
  @module("@material-ui/core") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~value: string,
    ~onChange: ReactEvent.Form.t => unit=?,
    ~label: string,
  ) => React.element = "Tab"
}
module TabPanel = {
  @module("@mui/lab") @react.component
  external make: (
    ~style: ReactDOMStyle.t=?,
    ~className: string=?,
    ~value: string,
    ~onChange: ReactEvent.Form.t => unit=?,
    ~label: string=?,
    ~children: React.element=?,
  ) => React.element = "TabPanel"
}
