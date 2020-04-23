import React, { Component } from "react";
import Container from "@material-ui/core/Container";

export default class Layout extends Component {
    render() {
        return (
            <Container maxWidth="md">
                <h1>h1 inside of the Layout Container</h1>
            </Container>
        );
    }
}
