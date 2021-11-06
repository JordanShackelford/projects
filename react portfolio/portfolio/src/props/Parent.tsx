import { ChildAsFC } from './Child';

const Parent = () => {
    return <ChildAsFC color="red" onClick = {() => console.log("clicked")}>
        asdflk
    </ChildAsFC>
};

export default Parent;